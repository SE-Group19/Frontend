import 'package:flutter/material.dart';
import 'package:animated_check/animated_check.dart';


class EventBookingPage extends StatefulWidget {
  @override
  _EventBookingPageState createState() => _EventBookingPageState();
}

class _EventBookingPageState extends State<EventBookingPage> {
  String? _selectedPaymentMode = 'Credit Card';
  String? _selectedTicketType = 'Standard';
  int _ticketCount = 1;

  void _onPaymentModeChanged(String? value) {
    setState(() {
      _selectedPaymentMode = value;
    });
  }

  void _onTicketTypeChanged(String? value) {
    setState(() {
      _selectedTicketType = value;
    });
  }

  void _onTicketCountChanged(int value) {
    setState(() {
      _ticketCount = value;
    });
  }

  void _onBuyTicketPressed() {
    // Perform payment processing logic here
    // Display payment success animation on payment success
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Event Tickets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Payment Mode:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Radio(
                  value: 'Credit Card',
                  groupValue: _selectedPaymentMode,
                  onChanged: _onPaymentModeChanged,
                ),
                Text('Credit Card'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Paypal',
                  groupValue: _selectedPaymentMode,
                  onChanged: _onPaymentModeChanged,
                ),
                Text('Paypal'),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Select Ticket Type:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Radio(
                  value: 'Standard',
                  groupValue: _selectedTicketType,
                  onChanged: _onTicketTypeChanged,
                ),
                Text('Standard'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'VIP',
                  groupValue: _selectedTicketType,
                  onChanged: _onTicketTypeChanged,
                ),
                Text('VIP'),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Select Number of Tickets:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (_ticketCount > 1) {
                      _onTicketCountChanged(_ticketCount - 1);
                    }
                  },
                ),
                Text(_ticketCount.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    _onTicketCountChanged(_ticketCount + 1);
                  },
                ),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              
              onPressed: () {
                 showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    icon: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30,
                            child: Container(
                             decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.blue,
                                 width: 4,
                                ),
                              ),
                            child: Icon(
                              Icons.check,
                                color: Colors.blue,
                                size: 40,
                              ),
                            ),
                          ),

                    title: Text("Payment Successful"),
                    content: Text("Your payment has been made successfully."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Buy Ticket'),
                  SizedBox(width: 8.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
